import { render, screen } from '@testing-library/react';
// import App from './App';
import JogoDaVelha from './JogoDaVelha';

test('renders learn react link', () => {
  render(<JogoDaVelha />);
  const linkElement = screen.getByText(/learn react/i);
  expect(linkElement).toBeInTheDocument();
});
